# 6.4 Solo Challenge Designing and Implementing a Class

# Release 0 - Design Class
=begin
thought I'd construct a class around cameras. I used to own quite a few.
the "state" of all cameras involves who makes them, the format, and other facts shared by # all cameras.
=end


class Camera
  attr_reader  :manufacturer, :model, :camera_format
  attr_accessor :output

  def initialize(manufacturer, model, output)
    @manufacturer = manufacturer
    @model = model
    @output = output
    puts "A new camera has hit the market. The #{manufacturer} #{model}."
  end

  def chip(chip_size)
    puts "it has a #{chip_size} chip which is huge."
  end

  def digifile(file_size)
    puts "it produces a huge #{file_size} RAW file."
  end

  def format(camera_format)
    puts "The #{camera_format} format is an industry-leader due to its unique aspect ratio."
  end

# *** User Input Override ***

until user_input = "stop" || user_input = "STOP"

  puts "Enter STOP when you wish to terminate updating your database."

  puts "Please enter the information after the prompt to create your unique camera database"

  user_camarray = [(nil, nil, nil, nil, nil, nil), (nil, nil, nil, nil, nil, nil)]
  input_camarray = []

  puts "Model of new camera?"
  model = gets.chomp
  input_camarray.push(model)

  puts "Camera Manufacturer?"
  manufacturer = gets.chomp
  input_camarray.push(manufacturer)

  puts "Type of Output of Camera (i.e. Digital, Film, etc.)"
  output = gets.chomp
  input_camarray.push(output)

  puts "Chip Size of Camera (include Megapixels in response"
  chip_size = gets.chomp
  input_camarray.push(chip_size)

  puts "How big of a file does the camera generate?"
  file_size = gets.chomp.to_i
  input_camarray.push(file_size)

  puts "And what is the format of the camera and resulting imagery? (i.e. dslr, panoramic, medium-format, etc."
  camera_format = gets.chomp
  input_camarray.push(camera_format)

    print user_camarray
  end

=begin
methods (or behavior) should involve how they select which mode to shoot in, and then how a still image is created and finally how the storage media is prepped for production.
=end

=begin
Commented this section out as to do so would be to have a TON of entries to do before generating one simple camera body. Keeping it at the attribute oriented stuff.
=end


def frames
   fps = 0
   puts "Select a speed to demonstrate the frames per second capacity ofthe #{model}. (1/1600, 800, 400, 320, 160, 80, 40) using the largernumber only (i.e 1600 for 1/1600)"

   fps = gets.chomp.to_i

   fps_hash = {"RAW" => (fps/50), "TIFF" => (fps/20), "JPG" => (fps/10)}

   puts "Sample burst frame rates at 1/#{fps} frames per second follows:"

   fps_hash["RAW"].times do |x| puts "this represents speed setting of 1/#{fps} RAW format frames being produced in one second.\n"
    end
"---------------------------------"
   fps_hash["TIFF"].times do |x| puts "this represents speed setting of 1/#{fps} TIFF format frames being produced in one second.\n"
    end
"---------------------------------"
   fps_hash["JPG"].times do |x| puts "this represents speed setting of 1/#{fps} JPG format frames being produced in one second.\n"
    end
"---------------------------------"
  end

 def mode(mode_select)
    puts "Which Mode would you like to shoot in? (Program, Manual, Auto, User)"
  # mode = gets.chomp.capitalize
  # mode = nil
  # until mode == " "
    if mode_select == "Program"
      puts "Program mode features Auto Focus, IR-assist, and partial user override on control panel."
    elsif mode_select == "Manual"
      puts "Manual mode features full manual control of f-stop, aperture, ISO settings, menu controls, focal length, etc."
    elsif mode_select == "Auto"
      puts "Auto mode features full automatic operation. The user has no input into focus, speed, and other elements while shooting in Auto mode. Pressing the camera icon and holding it for 5 seconds will give temporary focus and exposure control functionality. "
    elsif mode_select == "User"
      puts "User mode shifts camera operation into one of the 5 preset functions assigned in the main setup menu. If no preset is found, camera resorts to Auto mode."
    else
        puts "I'm sorry, I didn't recognize your choice. Please try again."
      end
  end

  def storage(format_card)
    # answer_array = ["yes", "y", "Yes", "NO", "N" "no", "n"]
    # puts "Would you like to format the flash card now? (yes / no)?"
    # format_card = gets.chomp.downcase
    # until answer_array.include?(format_card)
      if format_card == "yes" || format_card == "y" || format_card == "Yes"
        puts "The flash card will be formatted using the camera BIOS settings. All data will be erased."
        60.times do |x|
          puts " ***** Please wait.... Formatting.... ***** "
          end
          puts "Thank you. Card is ready for use."
      elsif format_card == "no" || format_card == "n"
        puts "Thank you. All data will be retained."
      else
        puts "try again."
      end
    end
 end




miv2016 = Camera.new("Canon", "Mark IV", "Digital")
miv2016.chip("22 Megapixels")
miv2016.digifile("66Mb")
miv2016.format("DSLR")
miv2016.frames
miv2016.mode("Auto")
miv2016.storage("Yes")
