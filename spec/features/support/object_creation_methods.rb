def create_user
  @user = User.create!(
  email: 'user@example.com'
  password: 'password'
  username: 'uex'
  )
end

def create_bookclub
  @bookclub = BookClub.create!(
  name: 'cool book lub'
  )
end

def create_assigned_book
  @assigned_book = AssignedBook.create!(
  bookclub_id: @bookclub.id,
  user_id: user.id
  )
end
