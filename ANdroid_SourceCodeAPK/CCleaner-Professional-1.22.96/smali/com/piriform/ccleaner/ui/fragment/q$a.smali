.class final Lcom/piriform/ccleaner/ui/fragment/q$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/piriform/ccleaner/a/a/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/q;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/fragment/q;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/q$a;->a:Lcom/piriform/ccleaner/ui/fragment/q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/q$a;->b:Landroid/content/Context;

    .line 318
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 313
    .line 2328
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q$a;->a:Lcom/piriform/ccleaner/ui/fragment/q;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/q;->b:Lcom/piriform/ccleaner/a/b;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/b;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/v;

    .line 2323
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/v;->b()V

    .line 313
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 313
    check-cast p1, Lcom/piriform/ccleaner/a/a/v;

    .line 1333
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q$a;->a:Lcom/piriform/ccleaner/ui/fragment/q;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Lcom/piriform/ccleaner/ui/fragment/q;Lcom/piriform/ccleaner/a/a/v;)Lcom/piriform/ccleaner/a/a/v;

    .line 1334
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q$a;->a:Lcom/piriform/ccleaner/ui/fragment/q;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/q;->a(Lcom/piriform/ccleaner/ui/fragment/q;)V

    .line 1335
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/q$a;->a:Lcom/piriform/ccleaner/ui/fragment/q;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/q;->R()V

    .line 313
    return-void
.end method
