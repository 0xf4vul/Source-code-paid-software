.class public abstract Lcom/piriform/ccleaner/ui/activity/k;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"


# instance fields
.field protected m:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract f()Landroid/support/v4/app/p;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/k;->setContentView(I)V

    .line 1024
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20
    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/k;->m:Landroid/support/v4/view/ViewPager;

    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/k;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/k;->f()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/s;)V

    .line 23
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/k;->m:Landroid/support/v4/view/ViewPager;

    .line 2024
    const v0, 0x7f1000b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1030
    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 1031
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 24
    return-void
.end method
