require 'spec_helper'

describe 'XcodeprojHelper' do
    describe 'method add_file_to_target?' do
      it 'should return true for Swift file' do
        filename = 'Test.swift'
        result = Generamba::XcodeprojHelper::add_file_to_target?(filename)
        expect(result).to eq(true)
      end

      it 'should return true for Obj-C file' do
        filename = 'Test.m'
        result = Generamba::XcodeprojHelper::add_file_to_target?(filename)
        expect(result).to eq(true)
      end

      it 'should return true for C++ file' do
        filename = 'Test.mm'
        result = Generamba::XcodeprojHelper::add_file_to_target?(filename)
        expect(result).to eq(true)
      end
    end
end