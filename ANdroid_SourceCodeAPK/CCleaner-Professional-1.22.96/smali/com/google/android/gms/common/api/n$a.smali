.class public final Lcom/google/android/gms/common/api/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/n$a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/n$a;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ap;

.field public final c:Landroid/accounts/Account;

.field public final d:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/n$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/n$a$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n$a$a;->a()Lcom/google/android/gms/common/api/n$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/n$a;->a:Lcom/google/android/gms/common/api/n$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ap;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/n$a;->b:Lcom/google/android/gms/internal/ap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/n$a;->c:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/common/api/n$a;->d:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ap;Landroid/os/Looper;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/n$a;-><init>(Lcom/google/android/gms/internal/ap;Landroid/os/Looper;)V

    return-void
.end method
