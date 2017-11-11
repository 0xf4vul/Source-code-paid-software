.class final Lcom/google/android/gms/internal/aaz$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ado;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/aay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ado",
        "<",
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xe;

    .line 1000
    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/wa;->i:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/xe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    .line 0
    return-void
.end method
