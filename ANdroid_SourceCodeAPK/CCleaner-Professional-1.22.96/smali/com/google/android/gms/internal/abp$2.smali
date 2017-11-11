.class final Lcom/google/android/gms/internal/abp$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/abp;->a(Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/acw$a;

.field final synthetic b:Lcom/google/android/gms/internal/abp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/abp;Lcom/google/android/gms/internal/acw$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/abp$2;->b:Lcom/google/android/gms/internal/abp;

    iput-object p2, p0, Lcom/google/android/gms/internal/abp$2;->a:Lcom/google/android/gms/internal/acw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/abp$2;->b:Lcom/google/android/gms/internal/abp;

    new-instance v1, Lcom/google/android/gms/internal/acw;

    iget-object v2, p0, Lcom/google/android/gms/internal/abp$2;->a:Lcom/google/android/gms/internal/acw$a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/acw;-><init>(Lcom/google/android/gms/internal/acw$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/abp;->b(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method
