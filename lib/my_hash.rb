class MyHash

  define_method(:initialize) do
    @keys = []
    @values = []
    {}
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
    {key=>value}
  end

  define_method(:fetch) do |key|
    location = @keys.index(key)
    @values.at(location)
  end
end
