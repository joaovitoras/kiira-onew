module DrawingsHelper
	def relactions_random(gallery)
		gallery.drawings.includes(:gallery).order_by_rand.limit(4).all
	end
end
