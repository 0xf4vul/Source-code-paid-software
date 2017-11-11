.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

.field final b:Lf/g;

.field final c:Lf/g;

.field d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

.field e:Lf/j;

.field final f:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/a;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/piriform/ccleaner/storageanalyzer/frontend/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/e;Lf/g;Lf/g;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    .line 25
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/q;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->f:Lf/e;

    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    .line 45
    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->b:Lf/g;

    .line 46
    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->c:Lf/g;

    .line 47
    return-void
.end method
