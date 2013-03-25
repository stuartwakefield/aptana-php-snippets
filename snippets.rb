with_defaults :scope => 'source.php' do

	# The following all use double quotes to allow interpolation
	snippet 'COOKIE["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_COOKIE["${1:variable}"]'
	end

	snippet 'ENV["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_ENV["${1:variable}"]'
	end

	snippet 'FILES["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_FILES["${1:variable}"]'
	end

	snippet 'GET["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_GET["${1:variable}"]'
	end

	snippet 'POST["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_POST["${1:variable}"]'
	end

	snippet 'REQUEST["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_REQUEST["${1:variable}"]'
	end

	snippet 'SERVER["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_SERVER["${1:variable}"]'
	end

	snippet 'SESSION["..."]' do |s|
		s.trigger = '$_'
		s.expansion = '\$_SESSION["${1:variable}"]'
	end

	# The following does not attempt to create an assignment
	snippet 'GLOBALS["..."]' do |s|
		s.trigger = 'globals'
		s.expansion = '\$GLOBALS["${1:variable}"]'
	end

	# The following does not add in a semi-colon and place the
	# cursor before it
	snippet 'echo "..."' do |s|
		s.trigger = 'echo'
		s.expansion = 'echo "${1:string}"'
	end
	
	# The following adds hinting to the parameters and removes
	# the semi-colon
	snippet 'define(..., ...)' do |s|
		s.trigger = 'def'
		s.expansion = 'define("${1:key}", "${2:value}")'
	end
	
	snippet 'defined(...)' do |s|
		s.trigger = 'def?'
		s.expansion = 'defined("${1:key}")'
	end
	
	# Removed the extends attribute
	snippet 'class ...' do |s|
		s.trigger = 'class'
		s.expansion = '/**
 * ${4:comment}
 */
class ${1:name} {

	function ${2:_construct}(${3:param}) {
		${0}
	}

}'
	end
	
	# The following does not a lot, removes the semi-colon from do 
	# while
	snippet 'do ... while ...' do |s|
		s.trigger = 'do'
		s.expansion = 'do {
	${0}
} while(${1:condition})'
	end
	
	snippet 'else ...' do |s|
		s.trigger = 'else'
		s.expansion = 'else {
	${0}
}'
	end
	
	snippet 'elseif ...' do |s|
		s.trigger = 'elseif'
		s.expansion = 'elseif(${1:condition}) {
	${0}
}'
	end
	
	# The following removes the key value assignment
	snippet 'foreach ...' do |s|
		s.trigger = 'foreach'
		s.expansion = 'foreach(${1:variable} as ${2:item}) {
	${0}
}'
	end
	
	# Removed assumptions
	snippet 'for ...' do |s|
		s.trigger = 'for'
		s.expansion = 'for(${1:initialize}; ${2:condition}; ${3:iterate}) {
	${0}
}'
	end

	# Added PHPDoc
	snippet 'function ...' do |s|
		s.trigger = 'fun'
		s.expansion = '/*
 * ${4:comment}
 */
${1:access}function ${2:name}(${3:param}) {
	${0}
}'
	end
	
end