.class final Lcom/piriform/ccleaner/a/a/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/a/a/q;->c()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/piriform/ccleaner/a/a/q;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/a/a/q;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/piriform/ccleaner/a/a/q$1;->b:Lcom/piriform/ccleaner/a/a/q;

    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/q$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIJ)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q$1;->b:Lcom/piriform/ccleaner/a/a/q;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/piriform/ccleaner/a/a/q;->a(II)V

    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q$1;->b:Lcom/piriform/ccleaner/a/a/q;

    invoke-virtual {v0, p2, p3, p4}, Lcom/piriform/ccleaner/a/a/q;->b(IJ)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/piriform/ccleaner/a/a/q$1;->b:Lcom/piriform/ccleaner/a/a/q;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/a/a/q;->a(Ljava/lang/String;)V

    .line 80
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
    .line 84
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q$1;->b:Lcom/piriform/ccleaner/a/a/q;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/a/a/q;->a(Lcom/piriform/ccleaner/a/a/q;I)I

    .line 85
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q$1;->b:Lcom/piriform/ccleaner/a/a/q;

    invoke-static {v0, p2, p3}, Lcom/piriform/ccleaner/a/a/q;->a(Lcom/piriform/ccleaner/a/a/q;J)J

    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/q$1;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-void
.end method
