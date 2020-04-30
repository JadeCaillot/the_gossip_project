class User < ApplicationRecord

    has_secure_password
    
    belongs_to :city
    has_many :gossips
    has_many :comments
    has_many :likes
    has_many :comment_of_comments
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "JoinPrivateMessageReceiver"

    def remember(remember_token)
        remember_digest = BCrypt::Password.create(remember_token)
        self.update(remember_digest: remember_digest)
    end
end
