class Soal < ApplicationRecord
	has_attached_file :gambar, style: { soals_pretest: "250x350>"}, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :gambar, content_type: /\Aimage\/.*\z/
end
