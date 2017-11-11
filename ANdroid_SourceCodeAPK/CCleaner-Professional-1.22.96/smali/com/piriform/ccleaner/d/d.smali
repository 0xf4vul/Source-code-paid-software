.class public final Lcom/piriform/ccleaner/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/piriform/ccleaner/w/a;

.field public final b:Lcom/piriform/ccleaner/a/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/a/a/q",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/w/a;Lcom/piriform/ccleaner/a/a/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/w/a;",
            "Lcom/piriform/ccleaner/a/a/q",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/d/d;->a:Lcom/piriform/ccleaner/w/a;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/d/d;->b:Lcom/piriform/ccleaner/a/a/q;

    .line 19
    return-void
.end method
