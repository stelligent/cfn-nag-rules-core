# frozen_string_literal: true

gem_path = Gem.loaded_specs['cfn-nag-rules-core'].full_gem_path
Dir.glob("#{gem_path}/lib/cfn-nag-rules-core/**/*.rb").each do |rule|
  require rule
end
