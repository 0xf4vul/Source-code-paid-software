.class final Lcom/google/android/gms/internal/iw$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iw$10;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/je$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/je$a;

.field final synthetic b:Lcom/google/android/gms/internal/iw$10;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw$10;Lcom/google/android/gms/internal/je$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$10$1;->b:Lcom/google/android/gms/internal/iw$10;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$10$1;->a:Lcom/google/android/gms/internal/je$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$10$1;->a:Lcom/google/android/gms/internal/je$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/je$a;->a(Lcom/google/firebase/database/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$10$1;->b:Lcom/google/android/gms/internal/iw$10;

    iget-object v1, v1, Lcom/google/android/gms/internal/iw$10;->a:Lcom/google/android/gms/internal/iw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V

    return-void
.end method
