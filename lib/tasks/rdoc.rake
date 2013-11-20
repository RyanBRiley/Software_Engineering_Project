require 'rdoc/task'

Rake::RDocTask.new do |rdoc|
	rdoc.rdoc_files.include('README.md')
	rdoc.rdoc_files.include('app/*/*.rb')
	rdoc.main = "README.md" #page to start on
	rdoc.title = "Game Documentation"
	rdoc.rdoc_dir = 'rdoc' #where we will put dis stuff
end