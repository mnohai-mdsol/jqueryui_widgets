guard 'cucumber', :notification => true, :all_after_pass => false, :cli => '--profile focus' do
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})          { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { 'features' }
  watch(%r{^lib/.+\.rb$})                   { 'features' }
  watch(%r{^cucumber.yml$})                 { 'features' }
end
