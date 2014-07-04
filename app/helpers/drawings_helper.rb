module DrawingsHelper
	def relactions_random(gallery)
		gallery.drawings.order_by_rand.limit(4).all
	end
end
