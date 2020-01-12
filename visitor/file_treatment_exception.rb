class FileTreatmentException < StandardError
  def initialize(msg='My Message')
    super(msg)
  end
end
