module SalesHelper
	def relactions_random_sales
		Product.all.includes(:sale).order_by_rand.limit(4).all
	end
end
