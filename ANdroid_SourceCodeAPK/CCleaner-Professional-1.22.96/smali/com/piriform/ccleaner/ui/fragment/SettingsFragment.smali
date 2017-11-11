.class public Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/piriform/ccleaner/reminder/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a(I)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;Lcom/piriform/ccleaner/reminder/a;)V
    .locals 1

    .prologue
    .line 21
    .line 3076
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a:Lcom/piriform/ccleaner/reminder/d;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/reminder/d;->a(Lcom/piriform/ccleaner/reminder/a;)V

    .line 21
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;Lcom/piriform/ccleaner/reminder/a;)V
    .locals 6

    .prologue
    .line 21
    .line 4071
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 4123
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 4072
    sget-object v1, Lcom/piriform/ccleaner/b/b;->i:Lcom/piriform/ccleaner/b/b;

    .line 5044
    iget-object v2, p1, Lcom/piriform/ccleaner/reminder/a;->g:Ljava/lang/String;

    .line 6036
    iget v3, p1, Lcom/piriform/ccleaner/reminder/a;->f:I

    .line 4072
    int-to-long v4, v3

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f08025a

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;)V

    .line 31
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->addPreferencesFromResource(I)V

    .line 1085
    const-string/jumbo v0, "v1.22.96"

    .line 1089
    const v1, 0x7f08025c

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a(I)Landroid/preference/Preference;

    move-result-object v1

    .line 1090
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 2080
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2081
    const-string/jumbo v1, "{your names here}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 2103
    :cond_0
    invoke-direct {p0, v2}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 2104
    const v1, 0x7f08025f

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a(I)Landroid/preference/Preference;

    move-result-object v1

    .line 2105
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 2109
    :cond_1
    invoke-direct {p0, v2}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 2110
    const v1, 0x7f08025d

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a(I)Landroid/preference/Preference;

    move-result-object v1

    .line 2111
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 3045
    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3046
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 3047
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3048
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3049
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3051
    :cond_2
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3053
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    return-void
.end method
