.class final Lcom/google/android/gms/internal/iw$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$14;->b:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$14;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$14;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$14;->b:Lcom/google/android/gms/internal/iw;

    invoke-static {v1}, Lcom/google/android/gms/internal/iw;->f(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$14;->b:Lcom/google/android/gms/internal/iw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$14;->b:Lcom/google/android/gms/internal/iw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    return-void
.end method
