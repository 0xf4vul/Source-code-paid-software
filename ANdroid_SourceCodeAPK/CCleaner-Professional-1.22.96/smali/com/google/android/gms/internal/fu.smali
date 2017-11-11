.class public final Lcom/google/android/gms/internal/fu;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4268

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_INVALID_CUSTOM_TOKEN"

    const-string/jumbo v4, "The custom token format is incorrect. Please check the documentation."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x426a

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_CUSTOM_TOKEN_MISMATCH"

    const-string/jumbo v4, "The custom token corresponds to a different audience."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x426c

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_INVALID_CREDENTIAL"

    const-string/jumbo v4, "The supplied auth credential is malformed or has expired."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4270

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_INVALID_EMAIL"

    const-string/jumbo v4, "The email address is badly formatted."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4271

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_WRONG_PASSWORD"

    const-string/jumbo v4, "The password is invalid or the user does not have a password."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4280

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_USER_MISMATCH"

    const-string/jumbo v4, "The supplied credentials do not correspond to the previously signed in user."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4276

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_REQUIRES_RECENT_LOGIN"

    const-string/jumbo v4, "This operation is sensitive and requires recent authentication. Log in again before retrying this request."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4274

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL"

    const-string/jumbo v4, "An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x426f

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_EMAIL_ALREADY_IN_USE"

    const-string/jumbo v4, "The email address is already in use by another account."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4281

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_CREDENTIAL_ALREADY_IN_USE"

    const-string/jumbo v4, "This credential is already associated with a different user account."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x426d

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_USER_DISABLED"

    const-string/jumbo v4, "The user account has been disabled by an administrator."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x427d

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_USER_TOKEN_EXPIRED"

    const-string/jumbo v4, "The user\'s credential is no longer valid. The user must sign in again."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4273

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_USER_NOT_FOUND"

    const-string/jumbo v4, "There is no user record corresponding to this identifier. The user may have been deleted."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4279

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_INVALID_USER_TOKEN"

    const-string/jumbo v4, "The user\'s credential is no longer valid. The user must sign in again."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x426e

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_OPERATION_NOT_ALLOWED"

    const-string/jumbo v4, "This operation is not allowed. You must enable this service in the console."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4282

    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v3, "ERROR_WEAK_PASSWORD"

    const-string/jumbo v4, "The given password is invalid."

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/c;
    .locals 4

    .prologue
    .line 0
    .line 1000
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->i:I

    .line 2000
    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 0
    :goto_0
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/fu;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object v2

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcom/google/firebase/c;

    const-string/jumbo v1, "An internal error has occurred."

    invoke-direct {v0, v1}, Lcom/google/firebase/c;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0

    .line 2000
    :cond_0
    const-string/jumbo v0, "An internal error happened"

    goto :goto_0

    .line 0
    :sswitch_0
    new-instance v0, Lcom/google/firebase/auth/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Lcom/google/firebase/auth/d;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Lcom/google/firebase/auth/f;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/google/firebase/auth/g;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/google/firebase/auth/e;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    new-instance v0, Lcom/google/firebase/auth/h;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 3000
    iget-object v3, p0, Lcom/google/android/gms/common/api/Status;->j:Ljava/lang/String;

    .line 0
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/auth/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    new-instance v0, Lcom/google/firebase/auth/c;

    invoke-static {v1}, Lcom/google/android/gms/internal/fu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "We have blocked all requests from this device due to unusual activity. Try again later."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/fu;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/firebase/f;

    invoke-direct {v0, v1}, Lcom/google/firebase/f;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_8
    new-instance v0, Lcom/google/firebase/d;

    const-string/jumbo v1, "A network error (such as timeout, interrupted connection or unreachable host) has occurred."

    invoke-direct {v0, v1}, Lcom/google/firebase/d;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_9
    const-string/jumbo v0, "An internal error has occurred."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/fu;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/firebase/c;

    invoke-direct {v0, v1}, Lcom/google/firebase/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_a
    new-instance v0, Lcom/google/firebase/c;

    const-string/jumbo v1, "User was not linked to an account with the given provider."

    invoke-direct {v0, v1}, Lcom/google/firebase/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_b
    new-instance v0, Lcom/google/firebase/c;

    const-string/jumbo v1, "User has already been linked to the given provider."

    invoke-direct {v0, v1}, Lcom/google/firebase/c;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_c
    new-instance v0, Lcom/google/android/gms/internal/nb;

    const-string/jumbo v1, "Please sign in before trying to get a token."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nb;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    new-instance v0, Lcom/google/firebase/auth/b;

    const-string/jumbo v1, "ERROR_EXPIRED_ACTION_CODE"

    const-string/jumbo v2, "The out of band code has expired."

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_e
    new-instance v0, Lcom/google/firebase/auth/b;

    const-string/jumbo v1, "ERROR_INVALID_ACTION_CODE"

    const-string/jumbo v2, "The out of band code is invalid. This can happen if the code is malformed, expired, or has already been used."

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4268 -> :sswitch_0
        0x426a -> :sswitch_1
        0x426c -> :sswitch_1
        0x426d -> :sswitch_4
        0x426e -> :sswitch_6
        0x426f -> :sswitch_3
        0x4270 -> :sswitch_1
        0x4271 -> :sswitch_1
        0x4272 -> :sswitch_7
        0x4273 -> :sswitch_4
        0x4274 -> :sswitch_3
        0x4276 -> :sswitch_2
        0x4277 -> :sswitch_b
        0x4278 -> :sswitch_a
        0x4279 -> :sswitch_4
        0x427c -> :sswitch_8
        0x427d -> :sswitch_4
        0x4280 -> :sswitch_1
        0x4281 -> :sswitch_3
        0x4282 -> :sswitch_5
        0x4285 -> :sswitch_d
        0x4286 -> :sswitch_e
        0x4457 -> :sswitch_c
        0x445b -> :sswitch_9
    .end sparse-switch
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fu;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 0
    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->j:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " [ %s ]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5000
    iget-object v3, p1, Lcom/google/android/gms/common/api/Status;->j:Ljava/lang/String;

    .line 0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
