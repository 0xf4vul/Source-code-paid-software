.class interface abstract Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/piriform/ccleaner/storageanalyzer/d;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method
