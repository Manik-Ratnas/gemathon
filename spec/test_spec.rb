require 'gemathon'


describe 'gemathon' do
  before(:all) do
    @my_github_username = 'github-contributions'
    @my_github_password = 'github143'
    @connection = Github.new basic_auth: "#{@my_github_username}:#{@my_github_password}"
    @org_name =["check-git","second-check"]
  end

  it 'list repositories' do
    list = Gemathon::List.new(@connection,@org_name).list
    list.should_not be_nil
  end  
end

