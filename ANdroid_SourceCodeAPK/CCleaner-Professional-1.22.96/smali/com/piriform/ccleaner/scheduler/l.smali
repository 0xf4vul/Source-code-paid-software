.class public final Lcom/piriform/ccleaner/scheduler/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/scheduler/l$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/scheduler/n;

.field final b:Lcom/piriform/ccleaner/professional/g;

.field final c:Lcom/piriform/ccleaner/b/e;

.field d:Lcom/piriform/ccleaner/scheduler/l$a;

.field e:Lcom/piriform/ccleaner/scheduler/m;

.field f:Lf/j;

.field final g:Ljava/lang/StringBuilder;

.field final h:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/core/a/p",
            "<",
            "Lcom/piriform/ccleaner/professional/m;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/l/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final i:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/o/g;",
            ">;"
        }
    .end annotation
.end field

.field j:Lf/j;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/scheduler/n;Lcom/piriform/ccleaner/professional/g;Lcom/piriform/ccleaner/b/e;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/piriform/ccleaner/scheduler/l$a;->a:Lcom/piriform/ccleaner/scheduler/l$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/l;->d:Lcom/piriform/ccleaner/scheduler/l$a;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/l;->g:Ljava/lang/StringBuilder;

    .line 43
    new-instance v0, Lcom/piriform/ccleaner/scheduler/l$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/l$1;-><init>(Lcom/piriform/ccleaner/scheduler/l;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/l;->h:Lf/e;

    .line 61
    new-instance v0, Lcom/piriform/ccleaner/scheduler/l$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/scheduler/l$2;-><init>(Lcom/piriform/ccleaner/scheduler/l;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/scheduler/l;->i:Lf/e;

    .line 85
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/l;->a:Lcom/piriform/ccleaner/scheduler/n;

    .line 86
    iput-object p2, p0, Lcom/piriform/ccleaner/scheduler/l;->b:Lcom/piriform/ccleaner/professional/g;

    .line 87
    iput-object p3, p0, Lcom/piriform/ccleaner/scheduler/l;->c:Lcom/piriform/ccleaner/b/e;

    .line 88
    return-void
.end method
