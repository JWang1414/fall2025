% Define the start and end points of the loop
start = -20;
finish = 20;

% Data will be stored in this matrix
data = zeros(41, 6);

for i = start:finish
  % Define x
  x = 10^i;
  data(i + 21, 1) = x;

  % Compute the approximate result
  result_approx = (x + 1)^(1/4) - 1;
  data(i + 21, 2) = result_approx;

  % Compute the precise result
  part1 = (x + 1)^(1/4) + 1;
  part2 = sqrt(x + 1) + 1;
  result_precise = x / (part1 * part2);
  data(i + 21, 3) = result_precise;

  % Compute the condition numbers
  part1 = (result_approx + 1)^(1/4) + 1;
  part2 = sqrt(result_approx + 1) + 1;
  part3 = (result_approx + 1)^(3/4);
  condition_number_apx = (part1 * part2) / (4 * part3);
  data(i + 21, 4) = condition_number_apx;

  part1 = (result_precise + 1)^(1/4) + 1;
  part2 = sqrt(result_precise + 1) + 1;
  part3 = (result_precise + 1)^(3/4);
  condition_number_pcs = (part1 * part2) / (4 * part3);
  data(i + 21, 5) = condition_number_pcs;

  % Compute the relative error
  relative_error = abs(result_approx - result_precise) / result_precise;
  data(i + 21, 6) = relative_error;
end

% Display a table of the data
printf("x | f orig | f modified | CN orig | CN modified | Relative error\n");
for i = 1:size(data, 1)
  fprintf("%6.2e | %6.2e | %6.2e | %6.8e | %6.8e | %6.2e\n", data(i, 1), data(i, 2), data(i, 3), data(i, 4), data(i, 5), data(i, 6));
end
