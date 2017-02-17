class Contact < Tableless
  column :name, :string
  column :email, :string
  column :content, :string
  
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates_length_of :content, :maximum =>500
  
  def update_spreadsheet
    ssName = 'Learn-Rails-Example'
    connection = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"])
    ss = connection.spreadsheet(ssName)
    if ss.nil?
      ss = connection.create_spreadsheet(ssName)
    end
    ws = ss.worksheets[0]
    last_row = 1 + ws.num_rows
    ws[last_row,1] = Time.new
    ws[last_row,2] = self.name
    ws[last_row,3] = self.email
    ws[last_row,4] = self.content
    ws.save
  end
end