.class public Lcom/piriform/ccleaner/ui/activity/CleanGooglePlaySearchHistoryActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/fragment/aa$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final o_()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CleanGooglePlaySearchHistoryActivity;->setContentView(I)V

    .line 14
    return-void
.end method
