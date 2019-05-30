def read_test_template(template_name)
  IO.read test_template_path(template_name)
end

def test_template_path(template_name)
  File.new(File.join(__dir__, 'test_templates', template_name)).path
end
