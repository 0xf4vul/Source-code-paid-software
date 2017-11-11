.class public Lcom/piriform/ccleaner/ui/activity/GooglePlayCleaningResultsActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/GooglePlayCleaningResultsActivity;->setContentView(I)V

    .line 13
    return-void
.end method
