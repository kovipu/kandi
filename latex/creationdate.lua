 os.remove("../dist/creationdate.timestamp")
 io.output("../dist/creationdate.timestamp"):write(os.date("\\edef\\tempa{\\string D:%Y%m%d%H%M%S}\n\\def\\tempb{%z}"))
