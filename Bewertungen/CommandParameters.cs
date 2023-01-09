public class CommandParameters
{
    public string Name { get; set; }
    public string Value { get; set; }
    public CommandParameters(string name, string value)
    {
        Name = name;
        Value = value;
    }
}