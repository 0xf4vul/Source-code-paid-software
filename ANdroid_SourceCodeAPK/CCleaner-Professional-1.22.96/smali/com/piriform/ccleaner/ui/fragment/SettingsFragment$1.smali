.class final Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/ListPreference;

.field final synthetic b:Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;Landroid/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->b:Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->a:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->a:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    .line 58
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->a:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v0}, Lcom/piriform/ccleaner/reminder/a;->a(I)Lcom/piriform/ccleaner/reminder/a;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->b:Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->a(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;Lcom/piriform/ccleaner/reminder/a;)V

    .line 63
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment$1;->b:Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;->b(Lcom/piriform/ccleaner/ui/fragment/SettingsFragment;Lcom/piriform/ccleaner/reminder/a;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method
