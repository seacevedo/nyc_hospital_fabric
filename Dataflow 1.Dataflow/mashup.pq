[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Query = let
  Source = Json.Document(Web.Contents("https://jsonplaceholder.typicode.com/todos/1")),
  #"Converted to table" = Table.FromRecords({Source}),
  #"Changed column type" = Table.TransformColumnTypes(#"Converted to table", {{"userId", Int64.Type}, {"id", Int64.Type}, {"title", type text}, {"completed", type logical}})
in
  #"Changed column type";
