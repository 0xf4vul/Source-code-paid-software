.class public Lcom/piriform/ccleaner/ui/activity/MessagesCleaningResultsActivity;
.super Lcom/piriform/ccleaner/ui/activity/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final f()Landroid/support/v4/app/p;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/al;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MessagesCleaningResultsActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/piriform/ccleaner/ui/fragment/am;->values()[Lcom/piriform/ccleaner/ui/fragment/am;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/al;-><init>(Landroid/content/Context;Landroid/support/v4/app/m;Ljava/util/List;)V

    return-object v0
.end method
