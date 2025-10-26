def process(buff: str) -> None:
    up = buff.count("(")
    down = buff.count(")")
    print(up - down)


def result() -> None:
    pass
