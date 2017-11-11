.class public Lcom/piriform/ccleaner/ui/activity/CleanMessagesActivity;
.super Lcom/piriform/ccleaner/ui/activity/k;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/fragment/aa$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final f()Landroid/support/v4/app/p;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/p;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CleanMessagesActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-static {}, Lcom/piriform/ccleaner/ui/fragment/am;->values()[Lcom/piriform/ccleaner/ui/fragment/am;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/p;-><init>(Landroid/content/Context;Landroid/support/v4/app/m;Ljava/util/List;)V

    return-object v0
.end method

.method public final o_()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CleanMessagesActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/s;->d()V

    .line 22
    return-void
.end method
