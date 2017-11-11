.class public abstract Lcom/piriform/ccleaner/ui/activity/f;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract f()Lcom/piriform/ccleaner/ui/fragment/aj;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/f;->setContentView(I)V

    .line 1021
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/f;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1023
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/f;->f()Lcom/piriform/ccleaner/ui/fragment/aj;

    move-result-object v1

    .line 1024
    const v2, 0x7f100084

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/q;->a(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 1025
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 18
    return-void
.end method
