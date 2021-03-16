webserver = Proc.new {
  [
    200,
    {"content-type" => "text/html"},
    ["hello 1234"]
  ]
}

run webserver