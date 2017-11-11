.class final Lcom/piriform/ccleaner/professional/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/i/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/professional/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/c/b;

.field final synthetic b:Lcom/piriform/ccleaner/professional/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/professional/e;Lcom/piriform/ccleaner/c/b;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/piriform/ccleaner/professional/e$1;->b:Lcom/piriform/ccleaner/professional/e;

    iput-object p2, p0, Lcom/piriform/ccleaner/professional/e$1;->a:Lcom/piriform/ccleaner/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/i/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/piriform/ccleaner/professional/e$1;->a:Lcom/piriform/ccleaner/c/b;

    iget-object v0, p0, Lcom/piriform/ccleaner/professional/e$1;->b:Lcom/piriform/ccleaner/professional/e;

    .line 1016
    iget-object v2, v0, Lcom/piriform/ccleaner/professional/e;->a:Lcom/piriform/ccleaner/i/d;

    .line 2015
    invoke-virtual {p1}, Lcom/piriform/ccleaner/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    new-instance v0, Lcom/piriform/ccleaner/professional/f;

    invoke-direct {v0, v2, v3, v3}, Lcom/piriform/ccleaner/professional/f;-><init>(Lcom/piriform/ccleaner/i/d;Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V

    .line 63
    :goto_0
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/c/b;->a(Ljava/lang/Object;)V

    .line 64
    return-void

    .line 2035
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/professional/f;

    invoke-direct {v0, v3, p1, v3}, Lcom/piriform/ccleaner/professional/f;-><init>(Lcom/piriform/ccleaner/i/d;Lcom/piriform/ccleaner/i/c;Ljava/lang/Exception;)V

    goto :goto_0
.end method
