class EmailValidator < ActiveModel::Validator

    def validate(record)

      if !record.email
        record.errors.add :email, "Must have email address"
        
      elsif record.email.match?(/\s/)
        record.errors.add :email, 'Should have no whitespace'

      elsif !record.email.include?('.') && !record.email.include?('@')
        record.errors.add :email, 'Should have a user and domain '
      end

    end

  end