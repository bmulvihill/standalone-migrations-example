class CreatePersons < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      create table PERSON (
        ID int not null,
        NAME varchar(100) not null
      )
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE PERSON
    SQL
  end
end
