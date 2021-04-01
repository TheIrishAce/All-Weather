module DateHelper
    def date_as_month_and_year(date)
        date.strftime("%B %Y")
    end
end