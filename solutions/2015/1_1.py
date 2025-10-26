def soln(buff:str)->None:
    up = buff.count("(")
    down = buff.count(")")
    print(up-down)