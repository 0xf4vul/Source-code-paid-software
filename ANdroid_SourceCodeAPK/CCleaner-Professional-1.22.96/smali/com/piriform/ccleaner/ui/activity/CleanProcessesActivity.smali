.class public Lcom/piriform/ccleaner/ui/activity/CleanProcessesActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/fragment/aa$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final o_()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CleanProcessesActivity;->setContentView(I)V

    .line 1021
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CleanProcessesActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    .line 1023
    new-instance v1, Lcom/piriform/ccleaner/ui/fragment/q;

    invoke-direct {v1}, Lcom/piriform/ccleaner/ui/fragment/q;-><init>()V

    .line 1024
    const v2, 0x7f100084

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/q;->a(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 1025
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 18
    return-void
.end method
