# questions/forms.py
from django import forms
from .models import Question

class QuestionForm(forms.ModelForm):
    class Meta:
        model = Question
        fields = ['question_text', 'level', 'options', 'correct_answer']
    
    def clean_options(self):
        options = self.cleaned_data['options']
        if not isinstance(options, dict):
            raise forms.ValidationError("Options should be a dictionary.")
        return options
