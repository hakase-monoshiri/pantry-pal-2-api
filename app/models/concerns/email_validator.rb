class EmailValidator < ActiveModel::Validator

    def validate(record)

      if !record.email
        record.errors.add :email, "Must have email address"
        return false
        
      elsif record.email.match?(/\s/)
        record.errors.add :email, 'Should have no whitespace'
        return false

      elsif !record.email.include?('.') && !record.email.include?('@')
        record.errors.add :email, 'Should have a user and domain '
        return false
      else
        return true
      end
    end

  end