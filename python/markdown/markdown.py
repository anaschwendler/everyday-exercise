"""
Observations:
re.match(): If zero or more characters at the beginning of string match
this regular expression, return a corresponding match object.
"""
import re


def parse(markdown):
    lines = markdown.split("\n")
    res = ""
    in_list = False
    in_list_append = False
    for i in lines:
        if re.match("###### (.*)", i) is not None:
            i = f"<h6>{i[7:]}</h6>"
        elif re.match("## (.*)", i) is not None:
            i = f"<h2>{i[3:]}</h2>"
        elif re.match("# (.*)", i) is not None:
            i = f"<h1>{i[2:]}</h1>"
        m = re.match(r"\* (.*)", i)
        if m:
            if not in_list:
                in_list = True
                is_bold = False
                is_italic = False
                curr = m.group(1)
                m1 = bold_match(curr)
                if m1:
                    curr = bold_constructor(m1)
                    is_bold = True
                m1 = italic_match(curr)
                if m1:
                    curr = italic_constructor(m1)
                    is_italic = True
                i = f"<ul><li>{curr}</li>"
            else:
                is_bold = False
                is_italic = False
                curr = m.group(1)
                m1 = bold_match(curr)
                if m1:
                    is_bold = True
                m1 = italic_match(curr)
                if m1:
                    is_italic = True
                if is_bold:
                    curr = bold_constructor(m1)
                if is_italic:
                    curr = italic_constructor(m1)
                i = f"<li>{curr}</li>"
        else:
            if in_list:
                in_list_append = True
                in_list = False

        m = re.match("<h|<ul|<p|<li", i)
        if not m:
            i = f"<p>{i}</p>"
        m = bold_match(i)
        if m:
            i = bold_constructor(m)
        m = italic_match(i)
        if m:
            i = italic_constructor(m)
        if in_list_append:
            i = f"</ul>{i}"
            in_list_append = False
        res += i
    if in_list:
        res += "</ul>"
    return res


def bold_match(line):
    return re.match("(.*)__(.*)__(.*)", line)


def bold_constructor(line):
    return f"{line.group(1)}<strong>{line.group(2)}</strong>{line.group(3)}"


def italic_match(line):
    return re.match("(.*)_(.*)_(.*)", line)


def italic_constructor(line):
    return f"{line.group(1)}<em>{line.group(2)}</em>{line.group(3)}"
