.class final Lcom/piriform/ccleaner/ui/fragment/n$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/piriform/ccleaner/f/o;",
        ">;",
        "Lcom/piriform/ccleaner/f/p$a;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/n;

.field private final b:Lcom/piriform/ccleaner/f/p;

.field private final c:Lcom/piriform/ccleaner/f/o;

.field private final d:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/fragment/n;Lcom/piriform/ccleaner/f/p;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 478
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 473
    new-instance v0, Lcom/piriform/ccleaner/f/o;

    invoke-direct {v0}, Lcom/piriform/ccleaner/f/o;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->c:Lcom/piriform/ccleaner/f/o;

    .line 479
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->b:Lcom/piriform/ccleaner/f/p;

    .line 480
    iput-object p3, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->d:Ljava/io/File;

    .line 481
    return-void
.end method


# virtual methods
.method public final a(IIJ)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public final a(IJLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->c:Lcom/piriform/ccleaner/f/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/o;->clear()V

    .line 505
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->c:Lcom/piriform/ccleaner/f/o;

    invoke-virtual {v0, p4}, Lcom/piriform/ccleaner/f/o;->addAll(Ljava/util/Collection;)Z

    .line 506
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->c:Lcom/piriform/ccleaner/f/o;

    .line 1014
    iput p1, v0, Lcom/piriform/ccleaner/f/o;->a:I

    .line 507
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->c:Lcom/piriform/ccleaner/f/o;

    .line 1022
    iput-wide p2, v0, Lcom/piriform/ccleaner/f/o;->b:J

    .line 508
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 468
    .line 2485
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->b:Lcom/piriform/ccleaner/f/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->d:Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/piriform/ccleaner/f/p;->a(Lcom/piriform/ccleaner/f/p$a;Ljava/io/File;Z)V

    .line 2486
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->c:Lcom/piriform/ccleaner/f/o;

    .line 468
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 468
    check-cast p1, Lcom/piriform/ccleaner/f/o;

    .line 1491
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/ui/fragment/n;Lcom/piriform/ccleaner/f/o;)Lcom/piriform/ccleaner/f/o;

    .line 1492
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$a;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/ui/fragment/n;Ljava/util/List;)V

    .line 468
    return-void
.end method
