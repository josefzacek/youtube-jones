require 'prawn'

Prawn::Document.generate("josef.pdf") do |pdf|

  pdf.font "Courier"

  pdf.move_down(100)
  pdf.draw_text("hello there everyone", :at => [0, pdf.y])
  pdf.move_down(100)
  pdf.draw_text("another line", :at => [0, pdf.y])

  pdf.stroke_color = 'ff0000'
  pdf.line_width = 5
  pdf.stroke do
    pdf.circle([300,300],100);
    pdf.circle([350,320],20);
    pdf.circle([260,325],20);
    pdf.curve [270, 250], [340, 250], :bounds => [[270, 270],[275,220]]
  end

  pdf.move_down(100)
  pdf.font_size = 36
  pdf.fill_color '0000ff'
  pdf.draw_text("Isn't this cool", :at => [40,40])




end