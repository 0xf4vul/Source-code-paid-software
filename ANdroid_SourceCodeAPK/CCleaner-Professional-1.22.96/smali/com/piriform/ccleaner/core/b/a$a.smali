.class public final Lcom/piriform/ccleaner/core/b/a$a;
.super Landroid/content/pm/IPackageDataObserver$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/core/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$a;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/a$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 118
    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/a$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 123
    return-void
.end method
