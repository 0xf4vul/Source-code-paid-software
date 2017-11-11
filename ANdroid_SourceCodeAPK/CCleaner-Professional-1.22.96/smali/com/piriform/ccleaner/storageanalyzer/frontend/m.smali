.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

.field final b:Lf/g;

.field final c:Lf/g;

.field final d:Lcom/piriform/ccleaner/core/b/g;

.field final e:Lf/j/b;

.field f:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;>;"
        }
    .end annotation
.end field

.field final g:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/d;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/e;Lf/g;Lf/g;Lcom/piriform/ccleaner/core/b/g;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lf/j/b;

    invoke-direct {v0}, Lf/j/b;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->e:Lf/j/b;

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->f:Lf/e;

    .line 53
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->g:Lf/e;

    .line 68
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 76
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    .line 77
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->b:Lf/g;

    .line 78
    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->c:Lf/g;

    .line 79
    iput-object p4, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->d:Lcom/piriform/ccleaner/core/b/g;

    .line 80
    return-void
.end method
