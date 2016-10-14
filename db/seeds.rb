# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
module DataSeeds
	def self.users
		hash = {
			'admin@sanilea.fr' => { password: SecureRandom.hex(20), admin: true },
			'lalilulelo@sanilea.fr' => { password: SecureRandom.hex(10) }
		}
		old_users = User.where(email: hash.keys).group_by(&:email)
		hash.each do |k, h|
			unless old_users.has_key? k
				unless User.create(h.merge!(email: k)).new_record
					puts "Create User: #{k} : #{h[:password]}"
				end
			end
		end
	end
end

DataSeeds.users
