# input 
#   - array of integers
#
# output 
#   - hash with two elements, 1) positions (indexes) of peaks and 2) the value of the peaks
#
# edge cases
#   - if no peaks return { pos: [], peaks: [] }
#   - input array is empty also return { pos: [], peaks: [] }
#   - plateaus count as peaks
#     - return the beginning of the plateau: [1, 2, 2, 2, 1] => { pos: [1], peaks: [2] }
#
# algorithm
#   - iterate through array
#     - if current_number is larger than last_number
#       - slope is 1
#       - update current_number and last_number
#     - if current_number is the same as last_number
#       - last_number is possible_peak
#       - slope is 0
#       - update current_number and last_number
#     - if current_number is smaller than last_number
#       - if slope is currently 0 then add possible_peak to result hash
#       - if slope is currently 1 then add info to result hash
#       - slope is now -1
#       - update current_number and last_number

require 'pry'

def pick_peaks(arr)
  result = { 'pos' => [], 'peaks' => [] }
  return result if arr.empty? || arr.size == 1

  idx = 1
  last_num, current_num = arr.first, arr[idx]
  slope = current_num > last_num ? 1 : (current_num == last_num ? 0 : -1)
  possible_peak = []

  loop do
    break if idx == arr.size

    if current_num > last_num
      slope = 1

    elsif current_num == last_num
      possible_peak = (idx - 1), arr[idx - 1] if slope == 1
      slope = 0

    else
      if slope == 0
        unless possible_peak.empty?
          result['pos'] << possible_peak[0]
          result['peaks'] << possible_peak[1]
          possible_peak = []
        end
      elsif slope == 1
        result['pos'] << idx - 1
        result['peaks'] << last_num
      end

      slope = -1
    end

    last_num = arr[idx]
    idx += 1
    current_num = arr[idx]
  end

  result
end

#p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2])
#p pick_peaks([])
#p pick_peaks([1, 2, 2, 1])
#p pick_peaks([1, 2, 2, 3])
p pick_peaks([2, 1, 3, 2, 2, 2, 2, 1])
