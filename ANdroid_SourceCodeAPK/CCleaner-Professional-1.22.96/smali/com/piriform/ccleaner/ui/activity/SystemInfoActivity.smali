.class public Lcom/piriform/ccleaner/ui/activity/SystemInfoActivity;
.super Lcom/piriform/ccleaner/ui/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/SystemInfoActivity;->setContentView(I)V

    .line 14
    return-void
.end method
