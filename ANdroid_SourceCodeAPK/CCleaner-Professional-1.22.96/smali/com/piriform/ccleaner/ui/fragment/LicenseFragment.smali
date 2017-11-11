.class public Lcom/piriform/ccleaner/ui/fragment/LicenseFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/LicenseFragment;->addPreferencesFromResource(I)V

    .line 16
    return-void
.end method
